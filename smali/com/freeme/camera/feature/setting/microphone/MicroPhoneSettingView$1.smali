.class Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$1;
.super Ljava/lang/Object;
.source "MicroPhoneSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->loadView(Landroid/preference/PreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->access$002(Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;Z)Z

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->access$100(Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;)Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;->onItemViewClick(Z)V

    const/4 p1, 0x1

    return p1
.end method