.class public final enum Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/image/GifHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GifError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum DATA_TOO_BIG:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum EOF_TOO_SOON:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum IMAGE_DEFECT:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum IMG_NOT_CONFINED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum INVALID_BYTE_BUFFER:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum INVALID_IMG_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum INVALID_SCR_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NOT_ENOUGH_MEM:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NOT_GIF_FILE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NOT_READABLE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NO_COLOR_MAP:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NO_ERROR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NO_FRAMES:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NO_IMAG_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum NO_SCRN_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum OPEN_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum READ_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum REWIND_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum UNKNOWN:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field public static final enum WRONG_RECORD:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;


# instance fields
.field a:I

.field public final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NO_ERROR"

    const-string v2, "No error"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_ERROR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "OPEN_FAILED"

    const-string v2, "Failed to open given input"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->OPEN_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "READ_FAILED"

    const-string v2, "Failed to read from given input"

    const/4 v5, 0x2

    const/16 v6, 0x66

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->READ_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NOT_GIF_FILE"

    const-string v2, "Data is not in GIF format"

    const/4 v6, 0x3

    const/16 v7, 0x67

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_GIF_FILE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NO_SCRN_DSCR"

    const-string v2, "No screen descriptor detected"

    const/4 v7, 0x4

    const/16 v8, 0x68

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_SCRN_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NO_IMAG_DSCR"

    const-string v2, "No image descriptor detected"

    const/4 v8, 0x5

    const/16 v9, 0x69

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_IMAG_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NO_COLOR_MAP"

    const-string v2, "Neither global nor local color map found"

    const/4 v9, 0x6

    const/16 v10, 0x6a

    invoke-direct {v0, v1, v9, v10, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_COLOR_MAP:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "WRONG_RECORD"

    const-string v2, "Wrong record type detected"

    const/4 v10, 0x7

    const/16 v11, 0x6b

    invoke-direct {v0, v1, v10, v11, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->WRONG_RECORD:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "DATA_TOO_BIG"

    const-string v2, "Number of pixels bigger than width * height"

    const/16 v11, 0x8

    const/16 v12, 0x6c

    invoke-direct {v0, v1, v11, v12, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->DATA_TOO_BIG:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NOT_ENOUGH_MEM"

    const-string v2, "Failed to allocate required memory"

    const/16 v12, 0x9

    const/16 v13, 0x6d

    invoke-direct {v0, v1, v12, v13, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_ENOUGH_MEM:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "CLOSE_FAILED"

    const-string v2, "Failed to close given input"

    const/16 v13, 0xa

    const/16 v14, 0x6e

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->CLOSE_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NOT_READABLE"

    const-string v2, "Given file was not opened for read"

    const/16 v14, 0xb

    const/16 v15, 0x6f

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_READABLE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "IMAGE_DEFECT"

    const-string v2, "Image is defective, decoding aborted"

    const/16 v15, 0xc

    const/16 v14, 0x70

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->IMAGE_DEFECT:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "EOF_TOO_SOON"

    const-string v2, "Image EOF detected before image complete"

    const/16 v14, 0xd

    const/16 v15, 0x71

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->EOF_TOO_SOON:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "NO_FRAMES"

    const-string v2, "No frames found, at least one frame required"

    const/16 v15, 0xe

    const/16 v14, 0x3e8

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_FRAMES:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "INVALID_SCR_DIMS"

    const-string v2, "Invalid screen size, dimensions must be positive"

    const/16 v14, 0xf

    const/16 v15, 0x3e9

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_SCR_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "INVALID_IMG_DIMS"

    const-string v2, "Invalid image size, dimensions must be positive"

    const/16 v14, 0x10

    const/16 v15, 0x3ea

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_IMG_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "IMG_NOT_CONFINED"

    const-string v2, "Image size exceeds screen size"

    const/16 v14, 0x11

    const/16 v15, 0x3eb

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->IMG_NOT_CONFINED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "REWIND_FAILED"

    const-string v2, "Input source rewind has failed, animation is stopped"

    const/16 v14, 0x12

    const/16 v15, 0x3ec

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->REWIND_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "INVALID_BYTE_BUFFER"

    const-string v2, "Invalid and/or indirect byte buffer specified"

    const/16 v14, 0x13

    const/16 v15, 0x3ed

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_BYTE_BUFFER:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown error"

    const/16 v14, 0x14

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->UNKNOWN:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v0, 0x15

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_ERROR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->OPEN_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->READ_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_GIF_FILE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_SCRN_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_IMAG_DSCR:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v8

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_COLOR_MAP:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v9

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->WRONG_RECORD:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v10

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->DATA_TOO_BIG:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v11

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_ENOUGH_MEM:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v12

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->CLOSE_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    aput-object v1, v0, v13

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NOT_READABLE:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->IMAGE_DEFECT:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->EOF_TOO_SOON:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->NO_FRAMES:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_SCR_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_IMG_DIMS:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->IMG_NOT_CONFINED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->REWIND_FAILED:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->INVALID_BYTE_BUFFER:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->UNKNOWN:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->b:[Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->a:I

    iput-object p4, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->description:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
    .locals 5

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->values()[Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->UNKNOWN:Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    iput p0, v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->a:I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->b:[Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "GifError %d: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->description:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
