.class public final enum Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeLibType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LIB_CORE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

.field public static final enum LIB_FACE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

.field public static final enum LIB_IMAGE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    const-string v1, "LIB_CORE"

    const-string v2, "tusdk-library"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_CORE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    new-instance v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    const-string v1, "LIB_IMAGE"

    const-string v2, "tusdk-image"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_IMAGE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    new-instance v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    const-string v1, "LIB_FACE"

    const-string v2, "tusdk-face"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_FACE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_CORE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_IMAGE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_FACE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->b:[Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->b:[Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    return-object v0
.end method


# virtual methods
.method public libName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->a:Ljava/lang/String;

    return-object v0
.end method
