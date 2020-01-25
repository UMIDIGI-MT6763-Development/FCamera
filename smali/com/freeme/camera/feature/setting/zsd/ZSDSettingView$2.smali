.class Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;
.super Ljava/lang/Object;
.source "ZSDSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    const/16 p2, 0x21

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x21

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$200(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/common/preference/SwitchPreference;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "onKeyUp mPref  of zsd is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp mPref of zsd is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$200(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/common/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freeme/camera/common/preference/SwitchPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$200(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/common/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {p1, v2}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$002(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$100(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;->onZsdClicked(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$200(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/preference/SwitchPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$002(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->access$100(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;)Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;->onZsdClicked(Z)V

    :cond_4
    :goto_0
    return v2
.end method
