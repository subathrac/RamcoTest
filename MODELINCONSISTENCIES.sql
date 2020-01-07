select * from 'de%glos%'

de_fw_des_dataitem

select D.component_name,servicename,dataitemname,data_type,defaultvalue from de_fw_des_service_dataitem d  
join de_glossary g
on D.customer_name = G.customer_name
and D.project_name = G.project_name
and D.process_name =G.process_name
and D.component_name = G.component_name
and dataitemname	=	bt_synonym_name
where servicename iN ('Md_AddMcr_CrtMcrTrn_Ser', 'Md_AddMcr_ConMcrTrn_Ser', 'Md_ModDoc_MnSbt_Ser', 'Md_ModDocMn_Trn3_Ser', 'Md_ModDocMn_Trn4_Ser', 'Md_RevMcr_Main_RevMcrT_Ser', 'Md_RevMcr_Main_ConMcrT_Ser', 'Md_RevMcr_Main_CncMcrT_Ser', 'Md_ModDoc_AcEffTrn1_Ser', 'Md_ModDoc_PrtEfTrn_Ser', 'Md_ModDoc_CndEff_Trn2_Ser', 'Md_ModDoc_TskTrn2_Ser', 'Md_ModDoc_STsk_Trn3_Ser', 'Md_ModDoc_PrtAdlEdt_Ser', 'Md_ModDoc_CmplEdit_Ser', 'Md_ModDoc_CnfigTrn2_Ser', 'md_mddoc_con_sub_ser', 'bmd_mddoc_wtb_sub_ser', 'Md_ModDoc_ResTrn2_Ser', 'Md_ModDoc_NwResEdt_Ser', 'md_mddoc_cust_sub_ser', 'bmd_mddoc_ref_sub_ser', 'Md_ModDoc_DirDt_Trn_Ser', 'bmd_mddoc_pub_sub_ser', 'md_mddoc_nts_sub_ser')
AND ((data_type IN ('Date-time','Date') AND ISDATE(defaultvalue) = 0)
	or (data_type iN ('Integer','Numeric')  and ISNUMERIC(defaultvalue) = 0))



	
select DISTINCT data_type , defaultvalue
from	de_fw_des_service_dataitem d  
join	de_glossary g
on		D.customer_name = G.customer_name
and D.project_name = G.project_name
and D.process_name =G.process_name
and D.component_name = G.component_name
and dataitemname	=	bt_synonym_name
where d.component_name ='BASeo'






SELECT ISNUMERIC(defaultvalue) = 0