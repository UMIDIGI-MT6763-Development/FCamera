.class Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;
.super Ljava/lang/Object;
.source "RestoreSettingsSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->loadView(Landroid/preference/PreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isFreemeTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$000(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$000(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1000ab

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const v0, 0x7f0f0062

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$100(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x1104

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$000(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$000(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x1

    return p1
.end method
