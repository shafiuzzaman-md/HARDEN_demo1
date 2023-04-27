from termios import CR1
import angr
import sys
import claripy
import pickle

class MyConcretizationStrategy(angr.concretization_strategies.SimConcretizationStrategy):
    def __init__(self, **kwargs): #pylint:disable=redefined-builtin
        super(MyConcretizationStrategy, self).__init__(**kwargs)

    def _concretize(self, memory, addr, **kwargs):
        mn,mx = self._range(memory, addr, **kwargs)
        print("min ",mn," max ", mx)
        return [mn, mx]

def runAndfind(binaryFile):
    c = angr.Project(binaryFile, auto_load_libs = False)
    cmd = claripy.BVS('cmd', c.arch.bits, explicit_name=True)
    ps = claripy.BVS('ps', c.arch.bits, explicit_name=True)
    #state = c.factory.call_state(0x4015b1)#for Demo1ValidateAccessKey 
    state = c.factory.call_state(0x4013ab)#for DoesKeyExist 
    #state = c.factory.call_state(0x401456)#for Demo1GenerateAccessKey 
    state.regs.rbp = claripy.BVS('rbp', c.arch.bits, explicit_name=True)
    state.regs.rsi = claripy.BVS('rsi', c.arch.bits, explicit_name=True)
    state.regs.rdx = claripy.BVS('rdx', c.arch.bits, explicit_name=True)
    state.regs.rdi = claripy.BVS('rdi', c.arch.bits, explicit_name=True)
    state.regs.xmm0lq = claripy.BVS('xmm0lq', c.arch.bits, explicit_name=True)
    x = claripy.BVS('x', 32, explicit_name=True)
    state.memory.read_strategies = [MyConcretizationStrategy()]
    state.memory.write_strategies = [MyConcretizationStrategy()]
    sm = c.factory.simulation_manager(state)
    sm.explore()
    print(len(sm.deadended))
    constraint_summary = claripy.Or(False)
    if(len(sm.deadended)>0):
        for i in range(len(sm.deadended)):
            path = sm.deadended[i]
            print(path.solver.constraints)
            m_1 = path.regs.eax
            constraint_and = claripy.And(True)
            #print(constraint_and)
            for j in range(len(path.solver.constraints)):
                #print(path.solver.constraints[j])
                constraint_and = claripy.And(path.solver.constraints[j], constraint_and)
                #print(constraint_and)
            #print(x==m_1)
            constraint_and = claripy.And(constraint_and, x==m_1)
            print("--------------------")
            print(constraint_and)
            constraint_summary=claripy.Or(constraint_and, constraint_summary)
    return constraint_summary    

    
print(str(sys.argv))
listName_ = sys.argv
fileName = listName_[1]
list_list_1 = runAndfind(str(fileName))
print("===========================")
print(list_list_1)
