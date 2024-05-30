using { anubhavcds } from '../db/CDSViews';
using { anubhav.db.master } from '../db/data-model';

service MyService @(path:'MyService') {

    function pokymon(name: String(20)) returns String;
    entity ProductOrdersSet as projection on anubhavcds.CDSViews.ProductOrders{
        *,
        PO_ORDERS
    };

    entity ReadEmployeeSrv as projection on master.employees;

}