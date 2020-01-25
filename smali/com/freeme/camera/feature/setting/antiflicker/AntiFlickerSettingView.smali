.class public Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;
.super Ljava/lang/Object;
.source "AntiFlickerSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;
.implements Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAntiFlickerSelector:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

.field private mEnabled:Z

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

.field private mKey:Ljava/lang/String;

.field private mOnValueChangeListener:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;

.field private mOriginalEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Lcom/freeme/camera/common/preference/Preference;

.field private mSelectedValue:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntryValues:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSummary:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030001

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v0, p2, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mAntiFlickerSelector:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const v0, 0x7f120002

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mAntiFlickerSelector:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mAntiFlickerSelector:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mAntiFlickerSelector:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f011c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOnValueChangeListener:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOriginalEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mOnValueChangeListener:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSelectedValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntryValues:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->mSummary:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
