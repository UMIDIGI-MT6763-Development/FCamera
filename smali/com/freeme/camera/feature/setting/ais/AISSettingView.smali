.class public Lcom/freeme/camera/feature/setting/ais/AISSettingView;
.super Ljava/lang/Object;
.source "AISSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;
    }
.end annotation


# static fields
.field private static final KEY_AIS:Ljava/lang/String; = "key_ais"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAisClickListener:Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;

.field private mChecked:Z

.field private mEnabled:Z

.field private mPref:Lcom/freeme/camera/common/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/ais/AISSettingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ais/AISSettingView;)Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mAisClickListener:Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const v0, 0x7f120001

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "key_ais"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setId(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0052

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ais/AISSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/ais/AISSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mChecked:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setAisClickListener(Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mAisClickListener:Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mChecked:Z

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->refreshView()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->mEnabled:Z

    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
