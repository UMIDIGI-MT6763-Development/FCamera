.class public final enum Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoSortDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Customize:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

.field public static final enum Date_Added:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

.field public static final enum Date_Modified:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;


# instance fields
.field public desc:Z

.field public key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    const-string v1, "Date_Added"

    const-string v2, "date_added"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Date_Added:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    const-string v1, "Date_Modified"

    const-string v2, "date_modified"

    invoke-direct {v0, v1, v4, v2, v4}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Date_Modified:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    const-string v1, "Customize"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Customize:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    sget-object v1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Date_Added:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Date_Modified:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Customize:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->a:[Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

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

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->key:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->desc:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->a:[Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    return-object v0
.end method


# virtual methods
.method public setDesc(Z)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->desc:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->key:Ljava/lang/String;

    return-object p0
.end method
