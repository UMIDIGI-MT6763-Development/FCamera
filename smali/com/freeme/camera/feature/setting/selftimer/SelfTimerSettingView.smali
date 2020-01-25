.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;
.super Ljava/lang/Object;
.source "SelfTimerSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# static fields
.field private static final SELF_TIMER_STATE_KEY:Ljava/lang/String; = "self_timer_key"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mContext:Landroid/app/Activity;

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

.field private mOnItemClickListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

.field private mOnValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

.field private mSelectedValue:Ljava/lang/String;

.field private mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

.field private mSelfTimerSelector:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEntryValues:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mOnItemClickListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerSelector:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mOnValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    return-object p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 2

    const-string v0, "10"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f0188

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "2"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f0189

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "3"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f018b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "self_timer_key"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const v0, 0x7f12001b

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerSelector:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerSelector:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerSelector:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mOnItemClickListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;)V

    :cond_0
    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0187

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelfTimerPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mEntryValues:Ljava/util/List;

    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mOnValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
