.class public final Lorg/lasque/tusdk/api/TuSDKFilterEngine;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;
    }
.end annotation


# static fields
.field private static final P:[[I

.field private static final Q:[[I

.field private static final a:[F

.field private static final b:[F


# instance fields
.field private A:Ljava/nio/FloatBuffer;

.field private B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private final G:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

.field private O:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

.field private R:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

.field private c:Landroid/content/Context;

.field private d:Ljavax/microedition/khronos/egl/EGLContext;

.field private e:Z

.field private f:Z

.field private g:[Lorg/lasque/tusdk/core/face/FaceAligment;

.field private h:F

.field private i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

.field private j:Z

.field private k:J

.field private l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

.field protected mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

.field private o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private p:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

.field private z:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->b:[F

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->P:[[I

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    aput-object v0, v1, v6

    sput-object v1, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->Q:[[I

    return-void

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

    :array_2
    .array-data 4
        0x10e
        0xb4
        0x5a
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xb4
        0x5a
        0x0
        0x10e
    .end array-data

    :array_4
    .array-data 4
        0x5a
        0x0
        0x10e
        0xb4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data

    :array_6
    .array-data 4
        0x5a
        0x0
        0x10e
        0xb4
    .end array-data

    :array_7
    .array-data 4
        0xb4
        0x5a
        0x0
        0x10e
    .end array-data

    :array_8
    .array-data 4
        0x10e
        0xb4
        0x5a
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->k:J

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->p:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->s:Z

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->t:Z

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->u:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->v:Z

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    iput-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    new-instance v2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;

    invoke-direct {v2, p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V

    iput-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->O:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    new-instance v2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;

    invoke-direct {v2, p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V

    iput-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->R:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->H:Ljava/util/Queue;

    iput-boolean p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->r:Z

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->p:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->w:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->x:Z

    iput-boolean p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->J:Z

    iput-boolean p4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->K:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method private a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-static {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p1
.end method

.method private a(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_0
    if-nez p5, :cond_1

    sget-object p5, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v1, v2

    :cond_3
    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p2

    add-int/2addr p1, p2

    :cond_4
    if-eqz v0, :cond_6

    sub-int/2addr v1, p1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p1

    if-eqz p3, :cond_5

    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_0
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_5
    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_6
    add-int/2addr v1, p1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p1

    if-eqz p4, :cond_7

    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_2

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_7
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_8
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_7
    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_3

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_9
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_a
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_b
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->P:[[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    div-int/lit8 p1, p1, 0x5a

    aget-object p1, v0, p1

    div-int/lit8 p2, p2, 0x5a

    aget p1, p1, p2

    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->Q:[[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    div-int/lit8 p1, p1, 0x5a

    aget-object p1, v0, p1

    div-int/lit8 p2, p2, 0x5a

    aget p1, p1, p2

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1
.end method

.method private a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_0
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_7
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getInterfaceRotation(Landroid/content/Context;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v3

    iget-boolean v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->x:Z

    iget-boolean v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->w:Z

    iget-object v6, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->p:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->b()V

    return-void
.end method

.method private a(J)V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v5

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->wantsMonochromeInput()Z

    move-result v5

    invoke-interface {v3, v5}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setCurrentlyReceivingMonochromeInput(Z)V

    :cond_1
    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 4

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isIsOriginalCaptureOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0, v1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->v:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne p1, v3, :cond_2

    invoke-direct {p0, p5}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p5

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, p5}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->setOutputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    invoke-direct {p0, p2, p1, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a([Lorg/lasque/tusdk/core/face/FaceAligment;IZ)V

    new-instance p1, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;

    invoke-direct {p1, p0, p3, p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;[Lorg/lasque/tusdk/core/face/FaceAligment;)V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mountAtGLThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3, v2}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->processImage()V

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->bufferFromCurrentlyProcessedOutput()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->outputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l()V

    new-instance p1, Lorg/lasque/tusdk/api/TuSDKFilterEngine$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$3;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f:Z

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->resumeAllStickers()V

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Landroid/graphics/Bitmap;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Landroid/graphics/Bitmap;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;IZ)V
    .locals 10

    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    if-gtz p2, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    iget-object v5, v4, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    array-length v5, v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_6

    iget-object v7, v4, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    aget-object v7, v7, v6

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iput v8, v0, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    iput v8, v0, Landroid/graphics/PointF;->y:F

    const/16 v8, 0xb4

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne p2, v8, :cond_2

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float v8, v9, v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    sub-float v8, v9, v8

    :goto_3
    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :cond_2
    const/16 v8, 0x5a

    if-ne p2, v8, :cond_3

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float v8, v9, v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    const/16 v8, 0x10e

    if-ne p2, v8, :cond_4

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_4
    :goto_4
    if-eqz p3, :cond_5

    iget v8, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v8

    iput v9, v7, Landroid/graphics/PointF;->x:F

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isEnableLiveStickr()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p2

    instance-of p2, p2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    array-length p4, p1

    if-lez p4, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget-object p2, p2, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->k:J

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->k:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 9

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    array-length v0, p1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v4, v2, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    array-length v4, v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, v2, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->J:Z

    return p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKFilterEngine;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->setOutputOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKFilterEngine;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->E:I

    return p1
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->e()V

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->b()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setInputTextureSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getSelesRotateShotOutput()Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    return p0
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->K:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->destroy()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->removeAllTargets()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->destory()V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->destroyOutput()V

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->z:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->b:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->A:Ljava/nio/FloatBuffer;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$1;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->I:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->g()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->I:Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->k()V

    return-void
.end method

.method private g()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h()V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->J:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->F:I

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    :goto_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    return-object v0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Lorg/lasque/tusdk/core/sticker/LiveStickerManager;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    return-object p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h:F

    return p0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->clearAllLocks()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->I:Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->R:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    return-object p0
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->e:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->k()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isEnableLiveStickr()Z

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getStickers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateStickers(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    :cond_0
    return-void
.end method

.method public final asyncProcessPictureData([B)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)V

    return-void
.end method

.method public final asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)V

    return-void
.end method

.method public final asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)V
    .locals 1

    if-eqz p3, :cond_1

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid rotation="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-void
.end method

.method public final asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 8

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-array v5, v0, [Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v0

    array-length v2, v5

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f:Z

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->pauseAllStickers()V

    :cond_3
    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;[B[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :cond_4
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->N:Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    return-object v0
.end method

.method public final getDeviceAngle()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h:F

    return v0
.end method

.method public getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method public getExifOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->isTransposed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->isTransposed()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    if-ne p1, v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->isTransposed()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->isTransposed()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public final getFaceFeatures()[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->g:[Lorg/lasque/tusdk/core/face/FaceAligment;

    return-object v0
.end method

.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method public getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public getOutputRotation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->q:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method public final isEnableLiveStickr()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->j:Z

    return v0
.end method

.method public final isFaceBeautySupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isFaceBeautySupported()Z

    move-result v0

    return v0
.end method

.method public isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->e:Z

    return v0
.end method

.method public isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isIsOriginalCaptureOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->t:Z

    return v0
.end method

.method public final isLiveStickerSupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isLiveStickerSupported()Z

    move-result v0

    return v0
.end method

.method protected isOnDrawTasksEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h()V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->d()V

    return-void
.end method

.method public final onSurfaceChanged(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->L:I

    iput p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->M:I

    return-void
.end method

.method public final onSurfaceCreated()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getCurrentGroupId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->d()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->K:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->createEGLContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->I:Z

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->c()V

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getStickerGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    :cond_2
    return-void
.end method

.method public final onSurfaceDestroy()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->d()V

    return-void
.end method

.method protected process2DTexture()V
    .locals 14

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->F:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->E:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    iget-object v7, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->z:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v8, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    iget-object v13, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->A:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public processFrame(III)I
    .locals 1

    if-lez p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-eq v0, p3, :cond_2

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p2, p3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isEnableLiveStickr()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setInputTextureSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_2
    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->F:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->runPendingOnDrawTasks()V

    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->J:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->processVideoSampleBufferOES()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->process2DTexture()V

    :goto_0
    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(J)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    const p2, 0x8d40

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->L:I

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->M:I

    invoke-static {p3, p3, p2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_4
    :goto_1
    return p1
.end method

.method protected processVideoSampleBufferOES()V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->B:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->F:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->E:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->C:I

    iget-object v7, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->z:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v8, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->D:I

    iget-object v13, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->A:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public removeAllLiveSticker()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l()V

    :cond_0
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->H:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->H:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawEndTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->H:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/util/Queue;)V

    return-void
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->G:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/util/Queue;)V

    return-void
.end method

.method public setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->y:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->N:Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    return-void
.end method

.method public final setEnableLiveSticker(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isLiveStickerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "Sorry, face feature is not supported on this device"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->j:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->j:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_1
    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-nez p1, :cond_2

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->O:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setDelegate(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->j()V

    return-void
.end method

.method public setHorizontallyMirrorFrontFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->w:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method public setHorizontallyMirrorRearFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->x:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method public setInputImageOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method public setIsInputCaptureMirrorEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->u:Z

    return-void
.end method

.method public setIsOriginalCaptureOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->t:Z

    return-void
.end method

.method public setIsOutputCaptureMirrorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->v:Z

    return-void
.end method

.method public setOutputOriginalImageOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->s:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a()V

    return-void
.end method

.method public showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isEnableLiveStickr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Please set setEnableLiveSticker to true before use live sticker"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->getValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const-string p1, "Too many live stickers in the group, please try to remove some stickers first."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-nez v0, :cond_3

    new-instance v0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->l()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "Only live sticker could be used here"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final switchFilter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->isFilterChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->e:Z

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$2;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final takeShot()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->getTerminalFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lorg/lasque/tusdk/api/TuSDKFilterEngine$8;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$8;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/seles/filters/SelesFilter;)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->g:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iput p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h:F

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    return-void
.end method
