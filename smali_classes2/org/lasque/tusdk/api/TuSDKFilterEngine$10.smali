.class synthetic Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->values()[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v3, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v4, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->b:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->values()[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    :try_start_8
    sget-object v4, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    sget-object v5, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->PortraitUpsideDown:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$10;->a:[I

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
