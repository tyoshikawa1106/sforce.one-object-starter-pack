public with sharing class S1_SforceOneController {

    public List<Account> accounts {get; set;}
    public List<FeedItem> feedItems {get; set;}
    public List<ListView> listviews {get; set;}

    public S1_SforceOneController() {
        this.accounts = getAccounts();
        this.feedItems = getFeedItems();
        this.listviews = getListViews();
    }

    private List<Account> getAccounts() {
        return [SELECT Id,Name FROM Account ORDER BY Name ASC LIMIT 200];
    }

    private List<FeedItem> getFeedItems() {
        return [SELECT Id,Body,CreatedDate FROM FeedItem WHERE ParentId =: UserInfo.getUserId()
                                    AND Type = 'TextPost' ORDER BY CreatedDate DESC LIMIT 200];
    }

    private List<ListView> getListViews() {
        return [SELECT Id, Name FROM ListView WHERE SobjectType = 'Account' LIMIT 200];
    }
}