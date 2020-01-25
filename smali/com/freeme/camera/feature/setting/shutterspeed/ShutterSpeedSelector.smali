.class public Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;
.super Landroid/preference/PreferenceFragment;
.source "ShutterSpeedSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$MyOnPreferenceClickListener;,
        Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;

.field private mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mSelectedValue:Ljava/lang/String;

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

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mTitleList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mSelectedValue:Ljava/lang/String;

    new-instance v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$MyOnPreferenceClickListener;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;)Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method private filterValuesOnShown()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getTitlePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTitlePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x625

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f019d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f01a0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f019f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f019e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f019c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->filterValuesOnShown()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f12001f

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/shutterspeed/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/RadioPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    return-void
.end method

.method public setEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mEntryValues:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method
