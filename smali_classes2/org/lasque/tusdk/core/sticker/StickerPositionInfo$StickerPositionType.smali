.class public final enum Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerPositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum StickerPosCheek:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosEye:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosEyeBrow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosEyeShadow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosHead:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosJaw:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosLip:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosMouth:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosNose:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenBottomCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenLeftBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenLeftCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenLeftTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenRightBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenRightCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenRightTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field public static final enum StickerPosScreenTopCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosEyeBrow"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeBrow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosEye"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEye:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosNose"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosNose:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosMouth"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosMouth:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosCheek"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosCheek:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosHead"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosHead:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosJaw"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosJaw:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosEyeShadow"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeShadow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosLip"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosLip:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosFullScreen"

    const/16 v12, 0x64

    invoke-direct {v0, v1, v11, v12}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenLeftTop"

    const/16 v12, 0xa

    const/16 v13, 0x65

    invoke-direct {v0, v1, v12, v13}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenRightTop"

    const/16 v13, 0xb

    const/16 v14, 0x66

    invoke-direct {v0, v1, v13, v14}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenLeftBottom"

    const/16 v14, 0xc

    const/16 v15, 0x67

    invoke-direct {v0, v1, v14, v15}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenRightBottom"

    const/16 v15, 0xd

    const/16 v14, 0x68

    invoke-direct {v0, v1, v15, v14}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenCenter"

    const/16 v14, 0xe

    const/16 v15, 0x69

    invoke-direct {v0, v1, v14, v15}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenRightCenter"

    const/16 v15, 0xf

    const/16 v14, 0x6a

    invoke-direct {v0, v1, v15, v14}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenLeftCenter"

    const/16 v14, 0x10

    const/16 v15, 0x6b

    invoke-direct {v0, v1, v14, v15}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenTopCenter"

    const/16 v14, 0x11

    const/16 v15, 0x6c

    invoke-direct {v0, v1, v14, v15}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenTopCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const-string v1, "StickerPosScreenBottomCenter"

    const/16 v14, 0x12

    const/16 v15, 0x6d

    invoke-direct {v0, v1, v14, v15}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenBottomCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v0, 0x13

    new-array v0, v0, [Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeBrow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEye:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosNose:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosMouth:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosCheek:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosHead:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosJaw:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeShadow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosLip:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenTopCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenBottomCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->b:[Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->b:[Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->a:I

    return v0
.end method
