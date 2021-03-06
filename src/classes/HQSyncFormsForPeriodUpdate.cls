public class HQSyncFormsForPeriodUpdate implements HQSyncDomainFieldUpdater {

    public HQSyncFormsForPeriodUpdate() {}

    public void updateSyncField(Domain__c domain) {
        domain.Forms_for_Period__c = domain.Forms_for_Period_TMP__c != null ? domain.Forms_for_Period_TMP__c : 0;
        domain.Forms_for_Period_TMP__c = 0;
    }

    public void updateSyncField(Domain__c domain, Domain_Monthly_Snapshot__c snapshot) {
        snapshot.Forms_for_Period__c = domain.Forms_for_Period__c;
    }

    public void updateSyncField(Decimal value, Domain_Monthly_Snapshot__c snapshot) {
        snapshot.Forms_for_Period__c = value;
    }

    public Integer getSyncFieldValue(Domain__c domain) {
        return Integer.valueOf(domain.Forms_for_Period__c);
    }

    public String getSyncFieldName() {
        return 'Forms_for_Period__c';
    }
}