.class Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$4;
.super Ljava/lang/Object;
.source "SupDefinitionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->onPreviewCallback([BI)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$4;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$4;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$800(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$4;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$900(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)V

    return-void
.end method
