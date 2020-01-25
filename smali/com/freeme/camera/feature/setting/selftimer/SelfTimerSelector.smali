.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;
.super Landroid/preference/PreferenceFragment;
.source "SelfTimerSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector$SelfTimerPreferenceClickListener;
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

.field private mListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

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

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mTitleList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mSelectedValue:Ljava/lang/String;

    new-instance v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector$SelfTimerPreferenceClickListener;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector$SelfTimerPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;)Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method private filterValuesOnShown()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getTitlePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getTitlePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f0189

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f018a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f0188

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f018b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->filterValuesOnShown()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f12001c

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method
