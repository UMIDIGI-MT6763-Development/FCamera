.class public Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
.super Ljava/lang/Object;
.source "IVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UISpec"
.end annotation


# instance fields
.field public isSupportedPause:Z

.field public isSupportedVss:Z

.field public pauseResumeListener:Landroid/view/View$OnClickListener;

.field public recordingTotalSize:J

.field public stopListener:Landroid/view/View$OnClickListener;

.field public vssListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedVss:Z

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedPause:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->vssListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->pauseResumeListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->stopListener:Landroid/view/View$OnClickListener;

    return-void
.end method
