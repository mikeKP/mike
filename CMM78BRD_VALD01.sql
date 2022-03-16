select 
br.txn_id as "Transaction Id", 
br.data_dt as "Data Date"
from rdtdba.der_brd_test br
where not exists
(select tx.txn_id, 
        tx.data_dt 
    from rdtdba.der_txf_test tx
    where tx.txn_id = br.txn_id
    and tx.data_dt = br.data_dt 
)