.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$400(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$400(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;->onShutterChangedStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabledImmediately(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabledImmediately(IZ)V

    return-void
.end method
