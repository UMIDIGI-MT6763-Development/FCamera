.class Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$1;
.super Ljava/lang/Object;
.source "SupDefinitionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$1;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$1;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$1;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$300(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void
.end method
