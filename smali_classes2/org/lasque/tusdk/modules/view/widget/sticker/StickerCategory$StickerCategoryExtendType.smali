.class public final enum Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerCategoryExtendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ExtendTypeAll:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

.field public static final enum ExtendTypeHistory:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    const-string v1, "ExtendTypeAll"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->ExtendTypeAll:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    const-string v1, "ExtendTypeHistory"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->ExtendTypeHistory:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->ExtendTypeAll:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->ExtendTypeHistory:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->a:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->a:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    return-object v0
.end method