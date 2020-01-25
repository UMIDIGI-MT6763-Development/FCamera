.class Lcom/freeme/camera/ui/video/VideoUI$1;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/video/VideoUI;->updateRecordingSize(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/video/VideoUI;

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/video/VideoUI;J)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    iput-wide p2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/video/VideoUI;->access$000(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/video/VideoUI;->access$100(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    move-result-object v2

    iget-wide v2, v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/video/VideoUI;->access$100(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    move-result-object v2

    iget-wide v2, v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x64

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/video/VideoUI;->access$100(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    move-result-object v1

    iget-wide v1, v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/video/VideoUI;->access$400(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    iget-wide v3, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    invoke-static {v2, v3, v4}, Lcom/freeme/camera/ui/video/VideoUI;->access$300(Lcom/freeme/camera/ui/video/VideoUI;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/video/VideoUI;->access$400(Lcom/freeme/camera/ui/video/VideoUI;)Lcom/freeme/camera/common/widget/RotateStrokeTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    iget-wide v3, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    invoke-static {v2, v3, v4}, Lcom/freeme/camera/ui/video/VideoUI;->access$500(Lcom/freeme/camera/ui/video/VideoUI;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/video/VideoUI;->access$600(Lcom/freeme/camera/ui/video/VideoUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/freeme/camera/ui/video/VideoUI;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRecordingSize] size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/ui/video/VideoUI$1;->val$size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
