//
//  OneSolutionAPIPath.swift
//  TestProject
//
//  Created by sreekanth reddy Tadi on 06/07/23.
//

import Foundation
import OneSolutionAPI

class OneSolutionAPIPath { }

extension OneSolutionAPIPath: APIPath {
    var login: String {
        "epcMobileLogin"
    }
    
    var graphData: String {
        "epcDashboardService/epcServiceRequestSearch"
    }
    
    var workOrders: String {
        "mCheckListServices/mWorkOrderList"
    }
    
    var inventoryAudit: InventoryAuditPath {
        struct InventoryAuditPaths: InventoryAuditPath {
            var siteGroup: String { "mAutocomplete/mServiceGroupAuto" }
            
            var save: String { "inventoryAuditService/auditSave" }
        }
        return InventoryAuditPaths()
    }
    
    var generalPORLocation: GeneralPORLocationPath {
        struct GeneralPORLocationPaths: GeneralPORLocationPath {
            var serialDetails: String { "EpcStorageServiceDetailDuplicate/mVinDetails" }
            var previousVinDetails: String { "EpcStorageServiceDetail/mStorageDetails" }
            
            var serial: String {"mDynamicSearch/mReferenceAutoComplete" }
            var lot: String { "EpcStorageServiceDetail/mPORLOT" }
            var area: String { "EpcStorageServiceDetail/mStorageName" }
            var row: String { "EpcStorageServiceDetail/mStorageRowDetails" }
            var column: String { "EpcStorageServiceDetail/mColumnDetails"}
            
            var update: String { "EpcStorageServiceDetailDuplicate/mStorageSave" }
        }
        return GeneralPORLocationPaths()
    }
}


//{
//    static var shared = ServiceAPI ()
//    let URL_VersionUpdate = BaseURL + "appUpdateSettingService"
//    let URL_Login = BaseURL + "epcMobileLogin"
//    let URL_Logout = BaseURL + "epcMobileLogout"
//    let URL_Home_graph = BaseURL + "epcDashboardService/epcServiceRequestSearch"
//    //MARK: - POR
//    let URL_POR_General_previous_POR = BaseURL + "EpcStorageServiceDetail/mStorageDetails"
//    let URL_POR_General_Vin = BaseURL + "EpcStorageServiceDetailDuplicate/mVinDetails"
//    let URL_POR_General_LOT = BaseURL + "EpcStorageServiceDetail/mPORLOT"
//    let URL_POR_General_Area = BaseURL + "EpcStorageServiceDetail/mStorageName"
//    let URL_POR_General_Row = BaseURL + "EpcStorageServiceDetail/mStorageRowDetails"
//    let URL_POR_General_Column = BaseURL + "EpcStorageServiceDetail/mColumnDetails"
//    let URL_POR_General_Update_POR = BaseURL + "EpcStorageServiceDetailDuplicate/mStorageSave"
//    //MARK: - Serial Details
//    let URL_SerialDetails = BaseURL + "mVinInfo/mVinDetailsDynamic"
//    //MARK: - WorkOrder Checklist
//    let URL_WorkOrder_NewOrders = BaseURL + "mCheckListServices/mWorkOrderList"
//    let URL_WorkOrder_NewOrders_ServiceGroup_AutoComplete = BaseURL + "mAutocomplete/mServiceGroupAutoCompleteDynamic"
//    let URL_WorkOrder_NewOrders_Site_AutoComplete = BaseURL + "mAutocomplete/mSiteAutoCompleteDynamic"
//    let URL_WorkOrder_NewOrders_MethodOut_AutoComplete = BaseURL + "mAutocomplete/methodOutAutoCompleteDynamic"
//
//    //    mAutocomplete/methodOutAutoCompleteDynamic
//
//    let URL_WorkOrder_New_Details = BaseURL + "mRetriveWorkOrders/mWList"
//    let URL_WorkOrder_New_Start_stop = BaseURL + "mSaveTimeHistoryForWorkOrder/mSave"
//    let URL_WorkOrder_New_mGetServiceGroupComments = BaseURL + "mWorkOrderComments/mGetServiceGroupComments"
//    let URL_WorkOrder_New_mUpdateServiceLevelComments = BaseURL + "mWorkOrderComments/mUpdateServiceLevelComments"
//    let URL_WorkOrder_New_mGetServiceLevelComments = BaseURL + "mWorkOrderComments/mGetServiceLevelComments"
//    let URL_WorkOrder_New_mUpdateServiceGroupLevelComments = BaseURL + "mWorkOrderComments/mUpdateServiceGroupLevelComments"
//    let URL_WorkOrder_New_WorkOrderService_addWo = BaseURL + "WorkOrderService/addWo"
//    let URL_WorkOrder_New_WorkOrderService_saveWo = BaseURL + "WorkOrderService/saveWo"
//    let URL_WorkOrder_New_Complete = BaseURL + "mSaveTimeHistoryForWorkOrder/mSaveIndividual"
//    let URL_WorkOrder_New_Check_Complete = BaseURL + "mWorkOrderMountingServices/mCheckPartCondition"
//    let URL_WorkOrder_New_Check_verify_Complete = BaseURL + "mRetriveWorkOrders/mVerifyAccessories"
//    let URL_WorkOrder_New_PartsList = BaseURL +  "mWorkOrderMountingServices/mGetPartsList"
//    let URL_WorkOrder_New_Parts = BaseURL + "mWorkOrderMountingServices/mGetParts"
//    let URL_WorkOrder_New_Parts_save = BaseURL + "mWorkOrderMountingServices/mMountingSave"
//    let URL_WorkOrder_CheckList = BaseURL + "mCheckListServices/mAdvanceRetriveCheckListQuestion"
//    let URL_Save_WorkOrder_CheckList = BaseURL + "mCheckListServices/mAdvanceChecksSaveNew"
//    let URL_WorkOrder_linked_CheckList = BaseURL + "mLinkedCheckListServices/mRetriveLinkedCheckListQuestion"
//    let URL_Save_linked_CheckList = BaseURL + "mLinkedCheckListServices/mLinkedCheckListSave"
//    let URL_Start_Stop_CheckList = BaseURL + "mSaveTimeHistory/mSave"
//    let URL_Start_Stop_BOL_CheckList = BaseURL + "mBolCheckListServices/mBolTimingHistorySave"
//    let URL_MandatePictures_CheckList = BaseURL + "mPictureMandateConditionService/mPictureService"
//    let URL_MandatePictures_BOL_CheckList = BaseURL + "mBolCheckListServices/mBolPictureService"
//    let URL_WorkOrder_parts_accessories = BaseURL + "mRetriveWorkOrders/mfindAllAccessories"
//    let URL_WorkOrder_parts_accessories_update = BaseURL + "mRetriveWorkOrders/mUpdateAccessories"
//
//    let URL_WorkOrder_getWorkOrderSignatureImageUrls = BaseURL + "mWorkOrderSignature/getWorkOrderSignatureImageUrls"
//
//    let URL_WorkOrder_saveWorkOrderSignatureImageUrls = BaseURL + "mWorkOrderSignature/saveWorkOrderSignatureImageUrls"
//
//    let URL_WorkOrder_workOrderSignatureValidation = BaseURL + "mWorkOrderSignature/workOrderSignatureValidation"
//
//
//
//    //MARK: - General Workorder
//
//    let URL_generalWorkOrder_siteGroup = BaseURL + "mAutocomplete/mServiceGroupAuto"
//    let URL_generalWorkOrder_site = BaseURL + "mSiteService/msiteDetails"
//    let URL_generalWorkOrder_serviceGroup = BaseURL + "mAutocomplete/mGeneralWOServiceGroupAutoCompleteDynamic"
//    let URL_General_WorkOrder_Details_container = BaseURL + "GeneralWorkOrderService/getAllExistingContainerNumberForGWo"
//
//    let URL_generalWorkOrder_list = BaseURL + "GeneralWorkOrderService/mGeneralWorkOrderList"
//
//
//    let URL_General_WorkOrder_New_Start_stop = BaseURL + "GeneralWorkOrderService/mSaveTimingHistoryGWO"
//
//    let URL_General_WorkOrder_Details_complete = BaseURL + "GeneralWorkOrderService/mSaveTimingHistoryGWOIndividual"
//
//
//    let URL_General_workorder_BOL_checklist = BaseURL + "mGeneralServiceWoCheckList/mRetirveGSWOCheckList"
//
//    let URL_General_workorder_BOL_Save = BaseURL + "mGeneralServiceWoCheckList/mSaveGSWOCheckList"
//
//    let URL_Start_Stop_workorder_BOL_CheckList = BaseURL + "mGeneralServiceWoCheckList/mGSWOCheckListTimingHistorySave"
//
//
//    let URL_General_WorkOrder_PORLocation_mfindAllParentContainerUnits = BaseURL + "GwoCheckListPORLocation/mfindAllParentContainerUnits"
//    let URL_General_WorkOrder_PORLocation_mfindAllChildContainerUnits = BaseURL + "GwoCheckListPORLocation/mfindAllChildContainerUnits"
//    let URL_General_WorkOrder_PORLocation_GwoCheckListPORLocation_mLocations = BaseURL + "GwoCheckListPORLocation/mLocations"
//
//    let URL_General_WorkOrder_PORLocation_GwoCheckListPORLocation_mGwoPORLocationUpdate = BaseURL + "GwoCheckListPORLocation/mGwoPORLocationUpdate"
//
//
//    let URL_generalProcess_WO_mRetrivetoBeReceivedUnits = BaseURL + "mReceiveService/mRetrivetoBeReceivedUnits"
//    let URL_generalProcess_WO_mReceiveService_mReceiveUnits = BaseURL + "mReceiveService/mReceiveUnits"
//
//
//
//    let URL_generalProcess_WO_mContainerScreeenAddInventoryUnit
//    = BaseURL + "mContainerScreeenAddInventoryServices/mContainerScreeenAddInventoryUnit"
//    let URL_generalProcess_WO_mUpdateComments = BaseURL + "mReceiveService/mUpdateComments"
//
//
//
//    //MARK: - GeneralService AddService
//
//    let URL_generalProcess_ADDSERVICE_BillingParties = BaseURL + "GeneralWorkOrderService/getGeneralWoBillingPartiesAutoComplete"
//    let URL_generalProcess_ADDSERVICE_siteGroup = BaseURL + "mSiteService/msiteAndSiteGroupDetails"
//    let URL_generalProcess_ADDSERVICE_GetAll = BaseURL + "GeneralWorkOrderService/getAllServicesForGWo"
//    let URL_generalProcess_ADDSERVICE_ADDService = BaseURL + "GeneralWorkOrderService/saveGwo"
//    let URL_generalProcess_ADDSERVICE_getContainer = BaseURL + "GeneralWorkOrderService/getAllContainerTypesForGWo"
//
//    let URL_generalProcess_ADDSERVICE_Model = BaseURL + "mModelService/mAllModelDetails"
//
//    let URL_generalProcess_ADDSERVICE_ServiceGroup = BaseURL + "mAutocomplete/mGWOServiceGroupAutoComplete"
//
//
//    let URL_AddInventory_Get_inventory_details = BaseURL + "createInventoryItemFromGwo/addInventoryItem"
//    let URL_AddInventory_Save = BaseURL + "createInventoryItemFromGwo/saveInventoryItem"
//
//    //MARK: - General workorder Parts
//    let URL_generalProcess_WO_checkPart = BaseURL + "mCheckListServices/mCheckListValidation"
//
//    let URL_generalWO_fetch_parts = BaseURL + "woMount/retrivePartsForAssigningToWo"
//    let URL_generalWO_validate_part = BaseURL + "woMount/mountingUnitValidation"
//
//    let URL_generalWO_save_parts = BaseURL + "woMount/saveAssigningPartsToWo"
//
//
//    //MARK: - RecordDamage
//
//    //    let URL_RecordDamage_damagesTypeslist = BaseURL + "epcServiceProcessingService/epcDamageAreaTypeList"
//    let URL_RecordDamage_damagesTypeslist = BaseURL + "checkListDamageRecording/damageTypeList"
//    let URL_RecordDamage_locationlist = BaseURL + "checkListDamageRecording/damageLocationList"
//    let URL_RecordDamage_severitylist = BaseURL + "checkListDamageRecording/damageSeverityList"
//    let URL_RecordDamage_actionList = BaseURL + "checkListDamageRecording/damageActionList"
//    let URL_RecordDamage_damageCategories = BaseURL + "checkListDamageRecording/damageCategoryList"
//    let URL_RecordDamage_damageslist = BaseURL + "checkListDamageRecording/retriveDamageRecordingList"
//    let URL_RecordDamage_saveDamage = BaseURL + "checkListDamageRecording/saveDamageRecordingList"
//
//
//    let URL_LinkedChecklist_saveRecordDamage = BaseURL + "mLinkedCheckListServices/saveLinkedDamageRecordingList"
//
//
//    let URL_RecordBOL_damageslist = BaseURL + "BolCheckListDamageRecording/retriveBolDamageRecordingList"
//    let URL_RecordBOL_saveDamage = BaseURL + "BolCheckListDamageRecording/saveBolDamageRecordingList"
//    //MARK:- Add Parts
//    let URL_AddPart_ParentVinDetails = BaseURL + "mInventoryServices/mAddPartParentVinDetails"
//    let URL_AddPart_ChildVinDetails = BaseURL + "mInventoryServices/mAddingPartVinDetails"
//    let URL_AddPart_Activity = BaseURL + "mActivityServices/mActivityDetails"
//    let URL_AddPart_Site = BaseURL + "mSiteService/msiteDetails"
//    let URL_AddPart_CustomerService = BaseURL + "mCustomeServices/mCustomerDetails"
//    let URL_AddPart_Dealer = BaseURL + "mCustomeServices/mDealerDetails"
//    let URL_AddPart_Delivery = BaseURL + "mCustomeServices/mDeliverToDetails"
//    let URL_AddPart_Make = BaseURL + "mMakeService/mMakeDetails"
//    let URL_AddPart_Model = BaseURL + "mModelService/mModelDetails"
//    let URL_AddPart_Priority = BaseURL + "mPriorityService/mPriorityDetails"
//    let URL_AddPart_TripInOut = BaseURL + "mTripInService/mDetails"
//    let URL_AddPart_MethodIn = BaseURL + "mMethodInService/mDetails"
//    let URL_AddPart_MethodOUT = BaseURL + "mMethodInService/mMethodOutService"
//    let URL_AddPart_Save = BaseURL + "mInventoryServices/mAddPartSave"
//
//    //Parts
//    let URL_Parts_Vin = BaseURL + "mInventoryServicesDuplicate/mMountVinDetails"
//    let URL_Mount_Parts_Vin = BaseURL + "mInventoryServicesDuplicate/mMountPartDetails"
//    let URL_Mount_Parts_Save = BaseURL + "mInventoryServicesDuplicate/mMountPartSave"
//    //MARK:- POR location
//
//    let URL_POR_Vin = BaseURL + "mVinInfo/mGetSerialBasedRecordsAdvanced"
//    let URL_Update_POR = BaseURL + "mCheckListServices/mUpdateShipmentData"
//    let URL_POR_Vin_Previous_Details = BaseURL + "EpcStorageServiceDetail/mStorageDetails"
//    let URL_POR_Lot = BaseURL + "EpcStorageServiceDetail/mPORLOT"
//    let URL_POR_Area = BaseURL + "EpcStorageServiceDetail/mStorageName"
//    let URL_POR_Row = BaseURL + "EpcStorageServiceDetail/mStorageRowDetails"
//    let URL_POR_Space = BaseURL + "EpcStorageServiceDetail/mColumnDetails"
//    let URL_POR_Vin_BOL = BaseURL + "mVinInfo/mGetSerialBasedRecordsForBol"
//    let URL_Update_POR_BOL = BaseURL +  "mBolCheckListServices/mUpdateShipmentData"
//    //MARK:- Receive Details
//    let URL_Receive_Vin_Details = BaseURL + "mVinInfoReceived/mVinDetails"
//    let URL_shipped_Vin_Details = BaseURL + "mVinInfoShippedAdvanced/mVinDetailsAdvanced"
//    let URL_Update_ReceiveDetails = BaseURL + "shipmentReceiveOrShipService/ReceiveOrShipStatusChange"
//    //MARK: - Yard Transfer
//    let URL_YardTransfer_Vin_Details = BaseURL + "mYardTransferService/mCheckReceivedCondition"
//    let URL_YardTransfer_Terminals = BaseURL + "mYardTransferService/mYardTransferCompanyList"
//    let URL_YardTransfer_UpdateTerminal = BaseURL + "mYardTransferService/mUpdateYardTransfer"
//    //MARK:- Upload files
//    func URL_FileUpload (_ serialNum: String) -> String {
//        return BaseURL + "epcServiceProcessingServiceDetail/upload/CLAYTON/" + serialNum
//    }
//    let URL_saveImages = BaseURL + "epcServiceProcessingServiceDetail/checkListImageSave"
//    let URL_savedImagesList = BaseURL + "epcServiceProcessingServiceDetail/getImageUrls"
//    let URL_saveImages_BOL = BaseURL + "mBolCheckListServices/mBolcheckListImageSave"
//    let URL_savedImagesList_BOL = BaseURL + "mBolCheckListServices/mGetBolImageUrls"
//
//
//    let URL_save_damage_Images = BaseURL + "checkListDamageRecording/checkListDamageRecordingImageSave"
//    let URL_saved_damage_ImagesList = BaseURL + "checkListDamageRecording/getDamageRecordingImageUrls"
//
//    let URL_save_damageBOL_Images = BaseURL + "BolCheckListDamageRecording/saveBolDamageImageList"
//    let URL_saved_damageBOL_ImagesList = BaseURL + "BolCheckListDamageRecording/getBolDamageRecordingImageUrls"
//
//
//    let URL_instructions_ImagesList = BaseURL + "instructionLinesService/getInstructionLinesImageUrls"
//
//
//    let URL_damage_imagesPreview = BaseURL + "woCreatedByDamage/woCreatedByDamageImagePreview"
//    let URL_damage_checklistPreview = BaseURL + "woCreatedByDamage/woCreatedByDamageCheckListPreview"
//
//    //MARK: - Activate CheckList
//
//    let URL_activate_Checklist = BaseURL + "mCheckListServices/minitilizeData"
//
//
//    //MARK:- General CheckList
//
//    let URL_GeneralCheckList_VinDetails = BaseURL + "mshipmentDetailAutocomplete/mSerailAutocompleteList"
//
//    let URL_GeneralCheckList_Templates = BaseURL + "mNewCheckListServices/mNewCheckList"
//    let URL_GeneralCheckList_CreatedList = BaseURL + "mEpcProcessingAutocomplete/mAutocompleteList"
//
//    let URL_GeneralCheckList_SalesOrder = BaseURL + "mListAutocomplete/mSalesOrderListAutoComplete"
//    let URL_GeneralCheckList_BOL = BaseURL + "mListAutocomplete/mBolListServiceAutoComplete"
//
//
//    let URL_SaveRetrieveCheckList_position = BaseURL + "RetriveLastSavedAnswer/mRetriveLastSavedAnswer"
//
//    let URL_SaveRetrieveCheckList_BOL_position = BaseURL + "mBolCheckListServices/mRetriveLastSavedAnswer"
//
//
//    let URL_GeneralCheckList_Checklist = BaseURL + "mNewCheckListServices/mAdvanceRetirveGeneralCheckList"
//    let URL_GeneralCheckList_Save = BaseURL + "mNewCheckListServices/mAdvanceSaveGeneralCheckList"
//
//
//    let URL_GeneralCheckList_BOL_checklist = BaseURL + "mBolCheckListServices/mRetirveBolGeneralCheckList"
//
//    let URL_GeneralCheckList_BOL_Save = BaseURL + "mBolCheckListServices/mSaveBolGeneralCheckList"
//
//
//    let URL_GeneralCheckList_TemplatesList = BaseURL + "mDuplicate/mDuplicateReferenceGetShipmentIds"
//
//    let URL_GeneralCheckList_CreatedListData = BaseURL + "mDuplicate/mDuplicateDynamicEpcServiceProcessingAutocomplete"
//
//
//    let URL_GeneralCheckList_SiteGroup = BaseURL + "mCheckListSiteGroupList/CheckListSiteGroupList"
//    let URL_GeneralCheckList_Team = BaseURL + "mTeamNameList/TeamNameList"
//
//
//    let URL_UpdateCompletedChecklist = BaseURL + "mUpdateWorkOrdersService/mUpdateWorkOrdersService"
//    let URL_UpdateBOLCompletedChecklist = BaseURL + "mBolCheckListServices/mBolUpdateWorkOrdersService"
//
//    let URL_SaveNonRepeatedChecklistQuestion = BaseURL + "mBolCheckListServices/mSaveNonRepeatedQuestion"
//
//
//    //MARK: - LoadOut Templates
//
//    let URL_LoadOut_Templates = BaseURL + "mDynamicSearchForGeneralCheckList/mLoadOutCheckList"
//
//    let URL_LoadOut_TemplatesList = BaseURL + "mDuplicate/mDuplicateReferenceGetShipmentIds"
//
//    let URL_LoadOut_CreatedListData = BaseURL + "mDuplicate/mDuplicatefindAllEpcServiceProcessingForGeneralCheckList"
//
//    let URL_LoadOut_CreatedListData_BOL = BaseURL + "mBolCheckListServices/mfindBolEpcServiceProcessingForGeneralCheckList"
//
//
//    //MARK: - LoadOut
//
//    let URL_LoadOut_Reference = BaseURL + "mDynamicSearch/mObtainReferenceFields"
//
//    let URL_LoadOut_SerialAutoComplete = BaseURL + "mDynamicSearch/mReferenceAutoComplete"
//
//    let URL_LoadOut_WorkOrders = BaseURL + "mDynamicSearch/mObtainWorkOrderList"
//
//
//    let URL_LoadOut_UpdateStatus = BaseURL + "mDynamicSearch/mLoadOutStatus"
//
//    let URL_LoadOut_KnowStatus = BaseURL + "mDynamicSearch/mKnowStatus"
//
//
//
//    //MARK: - LoadWithMount
//
//    let URL_LoadWith_VinDetails = BaseURL + "mInventoryServices/mSelectedToBeLoadVinDetails"
//    let URL_LoadToWitem = BaseURL + "mInventoryServices/mToWItemDetails"
//    let URL_LoadWith_Childs = BaseURL + "mInventoryServices/mSelectedToWItemDetails"
//    let URL_UpdateLoadWithDetails = BaseURL + "mInventoryServices/mLoadInfoUpdate"
//
//
//    var URL_LoadMount_VinDetails: String { return URL_Parts_Vin }
//    var URL_LoadMount_Childs: String { return URL_Mount_Parts_Vin }
//    var URL_UpdateLoadMountDetails: String { return URL_Mount_Parts_Save }
//
//
//
//    //MARK:- Receive Witem
//    let URL_Receive_witem_Vin_Details = BaseURL + "mVinInfoReceived/mVinDetailsDuplicate"
//    let URL_Update_Receive_witem_Details = BaseURL + "shipmentReceiveOrShipServiceDuplicate/ReceiveOrShipStatusChangeDupicate"
//
//
//    let URL_Update_Receive_methodIn = BaseURL + "mMethodInService/mDetails"
//    let URL_Update_Receive_TripIn = BaseURL + "mTripInService/mDetails"
//
//
//
//
//
//    //MARK: - Inventory Audit
//
//    let URL_SaveInventoryAudit = BaseURL + "inventoryAuditService/auditSave"
//
//    let URL_InventorySiteGroup = BaseURL + "mAutocomplete/mServiceGroupAuto"
//
//
//
//
//
//
//
//
//    let URL_processWorkorder_WORK_ORDERS_GETCHECKLIST_GET_IMAGES = BaseURL + "mImageService/getCheckListImageUrls"
//    let URL_processWorkorder_WORK_ORDERS_GETCHECKLIST_DELETE_IMAGES = BaseURL + "mImageService/mDeleteCheckListImage"
//    let URL_processWorkorder_WORK_ORDERS_GETCHECKLIST_UPDATE_IMAGES = BaseURL + "mImageService/mUpdateCheckListImage"
//
//    let URL_damage_get_images = BaseURL + "checkListDamageRecording/getDamageRecordingImageUrls"
//    let URL_damage_delete_image = BaseURL + "mImageService/mDeleteDamageCheckListImage"
//    let URL_damage_update_image = BaseURL + "mImageService/mUpdateDamageCheckListImage"
//
//
//
//    let URL_BOLChecklist_get_images = BaseURL + "mImageService/mGetBolCheckListImageUrls"
//    let URL_BOLChecklist_delete_image = BaseURL + "mImageService/mDeleteBolCheckListImage"
//    let URL_BOLChecklist_update_image = BaseURL + "mImageService/mUpdateBolCheckListImage"
//
//
//    let URL_BOLDamages_get_images = BaseURL + "mImageService/getBolDamageRecordingImageUrlsWithIds"
//    let URL_BOLDamages_delete_image = BaseURL + "mImageService/mDeleteDamageBolCheckListImage"
//    let URL_BOLDamages_update_image = BaseURL + "mImageService/mUpdateDamageBolCheckListImage"
//
//}
