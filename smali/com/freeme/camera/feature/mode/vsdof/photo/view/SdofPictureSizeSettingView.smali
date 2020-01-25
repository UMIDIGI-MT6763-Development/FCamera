.class public Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;
.super Ljava/lang/Object;
.source "SdofPictureSizeSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;,
        Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;
    }
.end annotation


# static fields
.field private static final KEY_STEREO_PICTURE_SIZE:Ljava/lang/String; = "key_stereo_picture_size"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mEnabled:Z

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPictureSizeChangeListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;

.field private mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

.field private mSelectedValue:Ljava/lang/String;

.field private mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

.field private mSelectorPreferenceClickListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;

.field private mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Sdof_PictureSize"

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;Landroid/app/Activity;Lcom/freeme/camera/common/relation/DataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    new-instance v1, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreferenceClickListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizeChangeListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizeChangeListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private createEntryTitles()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPictureSizePreference(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const v0, 0x7f120017

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "sdof_picture_size_preference"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/preference/Preference;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

    const v0, 0x7f09018f

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initPictureSizeSelectorPreference()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreferenceClickListener:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->setTitleList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_stereo_picture_size"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectorPreference:Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->setSelectedValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->initPictureSizeSelectorPreference()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->initPictureSizePreference(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method public refreshView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_stereo_picture_size"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mTitleList:Ljava/util/List;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mPictureSizePreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->createEntryTitles()V

    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
