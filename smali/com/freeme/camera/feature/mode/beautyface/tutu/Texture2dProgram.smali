.class Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

.field private static final imageVertices:[F

.field private static final textureCoordinate:[F


# instance fields
.field private mProgramHandle:I

.field private mProgramType:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;

.field private mTextureTarget:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private maTextureUniformLoc:I

.field private mvpMatrix:[F

.field private textureCoordBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->imageVertices:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->textureCoordinate:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramType:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$1;->$SwitchMap$com$freeme$camera$feature$mode$beautyface$tutu$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x8d65

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mTextureTarget:I

    const-string p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xde1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mTextureTarget:I

    const-string p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    :goto_0
    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_0

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maPositionLoc:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maTextureCoordLoc:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maTextureUniformLoc:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object p1, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->imageVertices:[F

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget-object p1, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->textureCoordinate:[F

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->textureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mvpMatrix:[F

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mvpMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string p1, "create Progrom"

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(I)V
    .locals 14

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maTextureUniformLoc:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maPositionLoc:I

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v8, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->maTextureCoordLoc:I

    iget-object v13, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->textureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    return-void
.end method

.method public getProgramType()Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramType:Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/Texture2dProgram;->mProgramHandle:I

    return-void
.end method
