CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_display_supplier_rating`()
BEGIN
 select supplier.supp_id, supplier.supp_name, rating.rat_ratstars, 
 CASE
 when rating.rat_ratstars >4 then 'Genuine Supplier'
 when rating.rat_ratstars >2 then 'Average Supplier'
 else 'supplier should not be considered'
 End As Verdict from rating inner join supplier on supplier.supp_id=rating.supp_id;
END