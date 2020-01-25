.class public final Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
.super Ljava/lang/Object;
.source "HeifWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private mGridEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private final mInputMode:I

.field private mMaxImages:I

.field private final mPath:Ljava/lang/String;

.field private mPrimaryIndex:I

.field private mQuality:I

.field private mRotation:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;III)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mGridEnabled:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mQuality:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mMaxImages:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mPrimaryIndex:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mRotation:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mFd:Ljava/io/FileDescriptor;

    iput p3, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mWidth:I

    iput p4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mHeight:I

    iput p5, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mInputMode:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid image size: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v13, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mFd:Ljava/io/FileDescriptor;

    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mWidth:I

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mHeight:I

    iget v5, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mRotation:I

    iget-boolean v6, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mGridEnabled:Z

    iget v7, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mQuality:I

    iget v8, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mMaxImages:I

    iget v9, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mPrimaryIndex:I

    iget v10, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mInputMode:I

    iget-object v11, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$1;)V

    return-object v13
.end method

.method public setGridEnabled(Z)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mGridEnabled:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setMaxImages(I)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 3

    if-lez p1, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mMaxImages:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrimaryIndex(I)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mPrimaryIndex:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid primaryIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQuality(I)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mQuality:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRotation(I)Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/HeifWriter$Builder;->mRotation:I

    return-object p0
.end method
