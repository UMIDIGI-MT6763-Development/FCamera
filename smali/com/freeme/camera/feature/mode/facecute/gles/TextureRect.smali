.class public Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;
.super Ljava/lang/Object;
.source "TextureRect.java"


# instance fields
.field mFragmentShader:Ljava/lang/String;

.field mProgram:I

.field mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertexShader:Ljava/lang/String;

.field maPositionHandle:I

.field maTexCoorHandle:I

.field muMVPMatrixHandle:I

.field vCount:I

.field xAngle:F

.field yAngle:F

.field zAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->vCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->xAngle:F

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->yAngle:F

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->zAngle:F

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->initVertexData()V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->initShader(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawSelf(I)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->muMVPMatrixHandle:I

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v5, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maPositionHandle:I

    iget-object v10, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v11, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maTexCoorHandle:I

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->vCount:I

    const/4 v2, 0x4

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public initShader(Landroid/content/Context;)V
    .locals 2

    const-string v0, "vertex.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/gles/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexShader:Ljava/lang/String;

    const-string v0, "frag.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gles/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mFragmentShader:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexShader:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mFragmentShader:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/facecute/gles/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mProgram:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mProgram:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maPositionHandle:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mProgram:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->maTexCoorHandle:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mProgram:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->muMVPMatrixHandle:I

    return-void
.end method

.method public initVertexData()V
    .locals 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->vCount:I

    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method
