.class Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;
.super Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;
.source "EglConfigSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/gles/egl/EglConfigSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;IIIIII)V
    .locals 6

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x3023

    aput v4, v0, v3

    const/4 v3, 0x3

    aput p3, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x3022

    aput v4, v0, v3

    const/4 v4, 0x5

    aput p4, v0, v4

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v0, v4

    const/4 v4, 0x7

    aput p5, v0, v4

    const/16 v4, 0x8

    const/16 v5, 0x3025

    aput v5, v0, v4

    const/16 v4, 0x9

    aput p6, v0, v4

    const/16 v4, 0xa

    const/16 v5, 0x3026

    aput v5, v0, v4

    const/16 v4, 0xb

    aput p7, v0, v4

    const/16 v4, 0xc

    const/16 v5, 0x3040

    aput v5, v0, v4

    const/16 v4, 0xd

    aput v3, v0, v4

    const/16 v3, 0x3038

    const/16 v4, 0xe

    aput v3, v0, v4

    const/16 v4, 0xf

    aput v1, v0, v4

    const/16 v4, 0x10

    aput v3, v0, v4

    const/16 v4, 0x11

    aput v1, v0, v4

    const/16 v1, 0x12

    aput v3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;-><init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;[I)V

    new-array p1, v2, [I

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mValue:[I

    iput p2, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mRedSize:I

    iput p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mGreenSize:I

    iput p4, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mBlueSize:I

    iput p5, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mAlphaSize:I

    iput p6, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mDepthSize:I

    iput p7, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mStencilSize:I

    invoke-static {}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "R:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mRedSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",G:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mGreenSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",B:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mBlueSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",A:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mAlphaSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",Depth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mDepthSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",Stencil:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mStencilSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private findClosestEglConfig(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Landroid/opengl/EGLConfig;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v6, v4

    move v7, v5

    move/from16 v4, p3

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v8, p2, v5

    const/16 v9, 0x3025

    invoke-direct {v0, v1, v8, v9, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v8

    aget-object v9, p2, v5

    const/16 v10, 0x3026

    invoke-direct {v0, v1, v9, v10, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v9

    aget-object v10, p2, v5

    const/16 v11, 0x302e

    invoke-direct {v0, v1, v10, v11, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v10

    aget-object v11, p2, v5

    const/16 v12, 0x3033

    invoke-direct {v0, v1, v11, v12, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v11

    iget v12, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mDepthSize:I

    if-lt v8, v12, :cond_0

    iget v12, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mStencilSize:I

    if-lt v9, v12, :cond_0

    aget-object v12, p2, v5

    const/16 v13, 0x3024

    invoke-direct {v0, v1, v12, v13, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v12

    aget-object v13, p2, v5

    const/16 v14, 0x3023

    invoke-direct {v0, v1, v13, v14, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v13

    aget-object v14, p2, v5

    const/16 v15, 0x3022

    invoke-direct {v0, v1, v14, v15, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v14

    aget-object v15, p2, v5

    const/16 v4, 0x3021

    invoke-direct {v0, v1, v15, v4, v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v4

    iget v15, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mRedSize:I

    sub-int v15, v12, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v3, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mGreenSize:I

    sub-int v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v15, v3

    iget v3, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mBlueSize:I

    sub-int v3, v14, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v15, v3

    iget v3, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mAlphaSize:I

    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v15, v3

    invoke-static {}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "Try to find EglConfig, want format:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " r: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " g: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " b: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " a: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " visual id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surfaceType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " depth = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stencil = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " distance = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v1, v10}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$200(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0, v10, v2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->isVisualIdValidate(ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ge v15, v7, :cond_1

    aget-object v1, p2, v5

    iget-object v3, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v3, v10}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$302(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;I)I

    move-object v6, v1

    move v7, v15

    goto :goto_1

    :cond_0
    move-object/from16 v16, v6

    :cond_1
    move-object/from16 v6, v16

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    move/from16 v4, p3

    goto/16 :goto_0

    :cond_2
    move-object/from16 v16, v6

    invoke-static {}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$300(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v16
.end method

.method private findConfigAttribute(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->mValue:[I

    aget p1, p1, v1

    return p1

    :cond_0
    return p4
.end method

.method private hasSpecifiedEglConfigFormat(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$1;->$SwitchMap$com$freeme$camera$common$gles$egl$EglConfigSelector$EglConfigFormat:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    if-ne v0, v3, :cond_0

    return v3

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->isRGBFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->isYuvFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isRGBFormat(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVisualIdValidate(ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Z
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$1;->$SwitchMap$com$freeme$camera$common$gles$egl$EglConfigSelector$EglConfigFormat:[I

    invoke-virtual {p2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->isRGBFormat(I)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->isYuvFormat(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isYuvFormat(I)Z
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const v0, 0x32315659

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method chooseConfigEGL14(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;IZ)Landroid/opengl/EGLConfig;
    .locals 2

    sget-object p4, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->YUV:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$100(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->hasSpecifiedEglConfigFormat(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;Ljava/util/ArrayList;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->YUV:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findClosestEglConfig(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Landroid/opengl/EGLConfig;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->RGB:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$100(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->hasSpecifiedEglConfigFormat(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    sget-object p4, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->RGB:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findClosestEglConfig(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Landroid/opengl/EGLConfig;

    move-result-object p4

    :cond_1
    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->RGBA:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-static {v1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->access$100(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->hasSpecifiedEglConfigFormat(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    sget-object p4, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;->RGBA:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;->findClosestEglConfig(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;ILcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;)Landroid/opengl/EGLConfig;

    move-result-object p4

    :cond_2
    return-object p4
.end method
