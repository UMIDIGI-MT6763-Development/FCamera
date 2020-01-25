.class public Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;
.super Landroid/preference/PreferenceFragment;
.source "PictureSizeSelectorPreference.java"


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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mTitleList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mSelectedValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f120018

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1    # Landroid/preference/Preference$OnPreferenceClickListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setSelectedValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method public setTitleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
