.class public Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;
.super Landroid/preference/PreferenceFragment;
.source "PictureSizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$MyOnPreferenceClickListener;,
        Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final DEGRESSIVE_RATIO:D = 0.5

.field private static final FILTER_PICTURE_SIZE:Ljava/lang/String; = "vendor.mtk.camera.app.filter.picture.size"

.field private static final MAX_COUNT:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sFilterPictureSize:Z


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

.field private mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;

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

    const-class v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "vendor.mtk.camera.app.filter.picture.size"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->sFilterPictureSize:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mTitleList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSelectedValue:Ljava/lang/String;

    new-instance v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$MyOnPreferenceClickListener;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method private filterValuesOnShown()V
    .locals 5

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->setFilterParameters(DI)V

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[filterValuesOnShown] sFilterPictureSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->sFilterPictureSize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-boolean v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->sFilterPictureSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->filterSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->filterValuesOnShown()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f120011

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSummaryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method
