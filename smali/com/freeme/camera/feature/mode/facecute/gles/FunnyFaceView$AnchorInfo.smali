.class public Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;
.super Ljava/lang/Object;
.source "FunnyFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorInfo"
.end annotation


# instance fields
.field public center_x_offset:F

.field public center_y_offset:F

.field public normal_draw:Z

.field public x:F

.field public x_offset:F

.field public y:F

.field public y_offset:F


# direct methods
.method public constructor <init>(ZFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->normal_draw:Z

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x:F

    iput p3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y:F

    iput p4, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->x_offset:F

    iput p5, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->y_offset:F

    iput p6, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_x_offset:F

    iput p7, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$AnchorInfo;->center_y_offset:F

    return-void
.end method
