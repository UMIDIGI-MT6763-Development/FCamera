.class Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;
.super Ljava/lang/Object;
.source "ModePickerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;->onPreviewStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

.field final synthetic val$previewCameraId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->val$previewCameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$000(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$000(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;->val$previewCameraId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$100(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->refreshModeList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
