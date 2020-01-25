.class public Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;
.super Ljava/lang/Object;
.source "ShutterSpeedSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;
.implements Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoEntry:Ljava/lang/String;

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

.field private mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;

.field private mPref:Lcom/freeme/camera/common/preference/Preference;

.field private mSelectedValue:Ljava/lang/String;

.field private mSelector:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntryValues:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mAutoEntry:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f01a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mAutoEntry:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelector:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 2

    const-string v0, "1"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f019c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "2"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f019e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "4"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f019f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "8"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f01a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "16"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f019d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f01a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[loadView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelector:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelector:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelector:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSelector$OnItemClickListener;)V

    :cond_0
    const v0, 0x7f12001e

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    const v0, 0x7f0901ba

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mEntries:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mAutoEntry:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mListener:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method public unloadView()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unloadView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
