.class public final enum Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerCategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum StickerCategoryOther:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

.field public static final enum StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

.field private static final synthetic b:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    const-string v1, "StickerCategorySmart"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    const-string v1, "StickerCategoryOther"

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategoryOther:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategoryOther:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->b:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->a:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->b:[Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->a:J

    return-wide v0
.end method
