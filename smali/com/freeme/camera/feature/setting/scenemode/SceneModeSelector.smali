.class public Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;
.super Landroid/preference/PreferenceFragment;
.source "SceneModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$MyOnPreferenceClickListener;,
        Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;

.field private mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mSelectedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$MyOnPreferenceClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;)Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mListener:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f120016

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mIcons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;->setIcon(I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mOnPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntries:Ljava/util/List;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mEntryValues:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mIcons:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mListener:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector$OnItemClickListener;

    return-void
.end method

.method public setSelectedValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSelector;->mSelectedValue:Ljava/lang/String;

    return-void
.end method
