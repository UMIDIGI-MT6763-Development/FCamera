.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;
.super Landroid/preference/PreferenceFragment;
.source "VideoQualitySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;,
        Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraID:I

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;

.field private mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mSelectedValue:Ljava/lang/String;

.field private mSummaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    const-class v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSummaryList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mTitleList:Ljava/util/List;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method private filterValuesOnShown()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mCameraID:I

    invoke-static {v3, v2}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->getCurrentResolution(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mActivity:Landroid/app/Activity;

    iget v5, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mCameraID:I

    invoke-static {v4, v2, v5}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->getQualityTitle(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mTitleList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->filterValuesOnShown()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f120022

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setCurrentID(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mCameraID:I

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method
