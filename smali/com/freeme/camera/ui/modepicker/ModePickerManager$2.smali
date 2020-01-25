.class Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;
.super Ljava/lang/Object;
.source "ModePickerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;->updateCurrentModeItem(Lcom/freeme/camera/common/IAppUi$ModeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

.field final synthetic val$item:Lcom/freeme/camera/common/IAppUi$ModeItem;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/common/IAppUi$ModeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;->val$item:Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;->val$item:Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$200(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/common/IAppUi$ModeItem;)V

    return-void
.end method
