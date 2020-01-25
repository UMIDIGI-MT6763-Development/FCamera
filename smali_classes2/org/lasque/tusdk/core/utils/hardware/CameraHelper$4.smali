.class synthetic Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Always:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->values()[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    :try_start_5
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    :try_start_c
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousVideo:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    sget-object v6, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->b:[I

    :try_start_11
    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->b:[I

    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->b:[I

    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->RATE_50HZ:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->b:[I

    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->RATE_60HZ:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->ordinal()I

    move-result v3

    aput v2, v1, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->a:[I

    :try_start_14
    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->a:[I

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
