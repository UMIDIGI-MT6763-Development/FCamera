.class Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$3;
.super Ljava/lang/Object;
.source "SupDefinitionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$3;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$3;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->hideView()V

    return-void
.end method
