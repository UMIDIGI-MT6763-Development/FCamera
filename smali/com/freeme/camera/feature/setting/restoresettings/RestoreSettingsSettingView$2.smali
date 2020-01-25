.class Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$2;
.super Ljava/lang/Object;
.source "RestoreSettingsSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->access$200(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;)Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;->onRestoreSettingsConfirmed()V

    return-void
.end method
