.class public Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;
.super Ljava/lang/Object;
.source "JniStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/jni/JniStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandmarkInfo"
.end annotation


# instance fields
.field public mFaceRect:Landroid/graphics/RectF;

.field public mLeftEye:Landroid/graphics/PointF;

.field public mLeftMouth:Landroid/graphics/PointF;

.field public mNose:Landroid/graphics/PointF;

.field public mRightEye:Landroid/graphics/PointF;

.field public mRightMouth:Landroid/graphics/PointF;

.field public x_angle:F

.field public y_angle:F

.field public z_angle:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftEye:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mLeftMouth:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightEye:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mNose:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mRightMouth:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$LandmarkInfo;->mFaceRect:Landroid/graphics/RectF;

    return-void
.end method
