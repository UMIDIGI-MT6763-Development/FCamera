.class public final enum Lorg/lasque/tusdk/core/type/ClazzType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/type/ClazzType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BooleanType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum CalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum DateType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum DoubleType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum FloatType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum GregorianCalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum IntegerType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum LongType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum StringType:Lorg/lasque/tusdk/core/type/ClazzType;

.field private static final b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/lasque/tusdk/core/type/ClazzType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum booleanType:Lorg/lasque/tusdk/core/type/ClazzType;

.field private static final synthetic c:[Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum doubleType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum floatType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum intType:Lorg/lasque/tusdk/core/type/ClazzType;

.field public static final enum longType:Lorg/lasque/tusdk/core/type/ClazzType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "IntegerType"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->IntegerType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "intType"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->intType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "LongType"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->LongType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "longType"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->longType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "FloatType"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->FloatType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "floatType"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->floatType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "DoubleType"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->DoubleType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "doubleType"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->doubleType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "BooleanType"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->BooleanType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "booleanType"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->booleanType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "StringType"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->StringType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "DateType"

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->DateType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "GregorianCalendarType"

    const-class v2, Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->GregorianCalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Lorg/lasque/tusdk/core/type/ClazzType;

    const-string v1, "CalendarType"

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lorg/lasque/tusdk/core/type/ClazzType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->CalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

    const/16 v0, 0xe

    new-array v0, v0, [Lorg/lasque/tusdk/core/type/ClazzType;

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->IntegerType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->intType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->LongType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->longType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->FloatType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->floatType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->DoubleType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->doubleType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->BooleanType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->booleanType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->StringType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->DateType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v14

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->GregorianCalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/type/ClazzType;->CalendarType:Lorg/lasque/tusdk/core/type/ClazzType;

    aput-object v1, v0, v15

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->c:[Lorg/lasque/tusdk/core/type/ClazzType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->b:Ljava/util/Map;

    invoke-static {}, Lorg/lasque/tusdk/core/type/ClazzType;->values()[Lorg/lasque/tusdk/core/type/ClazzType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/lasque/tusdk/core/type/ClazzType;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/type/ClazzType;->getFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/lasque/tusdk/core/type/ClazzType;->a:I

    return-void
.end method

.method public static getType(I)Lorg/lasque/tusdk/core/type/ClazzType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/ClazzType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ClazzType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/type/ClazzType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/ClazzType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/type/ClazzType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/ClazzType;->c:[Lorg/lasque/tusdk/core/type/ClazzType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/type/ClazzType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/type/ClazzType;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/type/ClazzType;->a:I

    return v0
.end method
