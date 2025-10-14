//=========================================================
//  Monitor
//=========================================================
class alu_monitor;
    virtual alu_if vif;

    function new(virtual alu_if vif);
        this.vif = vif;
    endfunction

    task sample(alu_transaction t);
        t.result = vif.result;
    endtask
endclass
