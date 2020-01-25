.class public Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final IDENTITY_MATRIX:[F

.field private static final TAG:Ljava/lang/String; = "Texture2dProgram"

.field public static final TEXTURE_2D:I = 0x0

.field public static final TEXTURE_EXT:I = 0x1

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

.field public static final V_FLIP_MATRIX:[F


# instance fields
.field private mProgramHandle:I

.field private mProgramType:I
    .annotation build Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram$ProgramType;
    .end annotation
.end field

.field private mTextureTarget:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->IDENTITY_MATRIX:[F

    sget-object v1, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->IDENTITY_MATRIX:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v0, v0, [F

    sput-object v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->V_FLIP_MATRIX:[F

    sget-object v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->V_FLIP_MATRIX:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget-object v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->V_FLIP_MATRIX:[F

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    sget-object v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->V_FLIP_MATRIX:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram$ProgramType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramType:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x8d65

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xde1

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    :goto_0
    iget v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    if-eqz v0, :cond_0

    const-string v0, "Texture2dProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maPositionLoc:I

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maPositionLoc:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkLocation(ILjava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maTextureCoordLoc:I

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maTextureCoordLoc:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkLocation(ILjava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muMVPMatrixLoc:I

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muMVPMatrixLoc:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkLocation(ILjava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muTexMatrixLoc:I

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muTexMatrixLoc:I

    const-string v0, "uTexMatrix"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkLocation(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Texture2dProgram"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    invoke-static {v2}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v2, "Texture2dProgram"

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    invoke-static {p0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    invoke-static {p0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v2, 0x8b82

    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-eq p1, p0, :cond_3

    const-string p0, "Texture2dProgram"

    const-string p1, "Could not link program: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Texture2dProgram"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    const-string p1, "Texture2dProgram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Texture2dProgram"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public createTextureObject()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const/high16 v2, 0x46180000    # 9728.0f

    const/16 v3, 0x2801

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const/16 v3, 0xde1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x46180400    # 9729.0f

    :goto_0
    const/16 v3, 0x2800

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V
    .locals 10

    move-object v0, p0

    const-string v1, "draw start"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p9

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static {v1, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->muTexMatrixLoc:I

    move-object/from16 v4, p7

    invoke-static {v1, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "glEnableVertexAttribArray"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v4, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maPositionLoc:I

    const/16 v6, 0x1406

    const/4 v7, 0x0

    move v5, p5

    move/from16 v8, p6

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "glEnableVertexAttribArray"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v4, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v5, 0x2

    move/from16 v8, p10

    move-object/from16 v9, p8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x5

    move v2, p3

    move v4, p4

    invoke-static {v1, p3, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v1, "glDrawArrays"

    invoke-static {v1}, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->checkGlError(Ljava/lang/String;)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public getProgramType()I
    .locals 1
    .annotation build Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram$ProgramType;
    .end annotation

    iget v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramType:I

    return v0
.end method

.method public release()V
    .locals 3

    const-string v0, "Texture2dProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/heif/Texture2dProgram;->mProgramHandle:I

    return-void
.end method
