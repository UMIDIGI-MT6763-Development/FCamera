.class public Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;
.super Ljava/lang/Object;
.source "JniStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/jni/JniStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkSimpleInfo"
.end annotation


# instance fields
.field public leftEye_x:I

.field public leftEye_y:I

.field public leftMouth_x:I

.field public leftMouth_y:I

.field public nose_x:I

.field public nose_y:I

.field public rightEye_x:I

.field public rightEye_y:I

.field public rightMouth_x:I

.field public rightMouth_y:I

.field public x_angle:I

.field public y_angle:I

.field public z_angle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_x:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_y:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_x:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_y:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftMouth_x:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftMouth_y:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightMouth_x:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightMouth_y:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->nose_x:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->nose_y:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " leftEye info x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rightEye info x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leftMouth info x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftMouth_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftMouth_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rightMouth info x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightMouth_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightMouth_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nose info x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->nose_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->nose_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x_angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->x_angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",y_angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->y_angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",z_angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->z_angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
