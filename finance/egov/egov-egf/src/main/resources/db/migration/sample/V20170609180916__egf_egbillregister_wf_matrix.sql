delete from eg_wf_matrix where objecttype = 'EgBillregister';

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('SEQ_EG_WF_MATRIX'), 'ANY', 'EgBillregister','NEW', NULL, NULL, 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', NULL, 'Created', 'Verification Pending', 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', 'Created', 'Forward,Reject', NULL, NULL, '2016-01-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('SEQ_EG_WF_MATRIX'), 'ANY', 'EgBillregister', 'Rejected', NULL, NULL, 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', NULL, 'Created', 'Verification Pending', 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', NULL, 'Forward,Cancel', NULL, NULL, '2016-01-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('SEQ_EG_WF_MATRIX'), 'ANY', 'EgBillregister', 'Created', NULL, NULL, 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', NULL, 'Verified', 'Approval pending', 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', 'Verification Done', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('SEQ_EG_WF_MATRIX'), 'ANY', 'EgBillregister', 'Verified', NULL, NULL, 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', NULL, 'Verified', 'Approval pending', 'Assistant Examiner of Accounts,Commissioner,Examiner of Accounts,Accounts Officer,Junior Accounts Officer,Senior Accountant,Junior Accountant,Accountant Category - IV,Manager,Senior Assistant,Deputy Executive Engineer,Junior Assistant,Record Assistant,System Manager,System Assistant/ Data Entry Operator,Office Subordinate,Secretary,Assistant Commissioner,Public Relations Officer,Deputy Commissioner,Superintendent,Education Officer,School Supervisor,Assistant Engineer,Work Inspector/ Technical Mastry,CAD/GIS Operator,Environmental Engineer (AE/AEE),Lighting Superintendent,Chief Engineer,PA to Chief Engineer,Superintending Engineer,Executive Engineer,Assistant Executive Engineer,Homeo Medical Officer,Sanitary Inspector,Health Assistant/Birth and Death Registrar,Chief Medical Officer,Assistant Medical Officer,Municipal Health Officer,Sanitary Supervisor,Revenue Officer,Bill Collector,UD Revenue Inspector,Town Planning Officer (Special Grade),Town Planning Supervisor,Town Planning Building Overseer,Town Surveyor,Horticulture Officer,Chief City Planner,City Planner,Deputy City Planner,Assistant City Planner,Town Planning Offcer (Selection Grade),Town Planning Offcer (Ordinary Grade),Transportation Planner,Town Project Officer,Project Officer,Town Corodinator,Assistant Project Officer,Deputy Statistical Officer,Veterinary officer,Additional Commissioner,Deputy Chief Engineer,Technical Officer,Assistant Technical Officer,Junior Technical Officer,Municipal Engineer', 'Verification Done', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('SEQ_EG_WF_MATRIX'), 'ANY', 'EgBillregister', 'Final Approval Pending', NULL, NULL, 'Commissioner', NULL,'END', 'END', NULL, NULL, 'Approve,Reject', NULL, NULL, '2016-01-01', '2099-04-01');
