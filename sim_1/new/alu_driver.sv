//=========================================================
//  Driver
//=========================================================
class alu_driver;
    virtual alu_if vif; // virtual interface handle

    function new(virtual alu_if vif);
        this.vif = vif;
    endfunction

    task drive(alu_transaction t);
        vif.A = t.A;
        vif.B = t.B;
        vif.opcode = t.opcode;
        #5; // allow DUT to compute
        t.result = vif.result;
    endtask
endclass
