.class public Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;
.super Ljava/lang/Object;
.source "JniStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/jni/JniStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rect"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->top:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->left:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->bottom:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->right:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->top:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->left:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->bottom:I

    iput p4, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->right:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->bottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->top:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rect top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
