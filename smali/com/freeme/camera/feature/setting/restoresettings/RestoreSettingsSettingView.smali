.class public Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;
.super Ljava/lang/Object;
.source "RestoreSettingsSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;

.field private mPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$2;-><init>(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mListener:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 1

    const v0, 0x7f120012

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mPref:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mPref:Landroid/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public refreshView()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRestoreSettingsConfirmedListener(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->mListener:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;

    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
