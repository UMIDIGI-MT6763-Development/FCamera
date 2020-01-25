.class final Lcom/baidu/location/c/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private b:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/location/c/k$a;->a:D

    iput-wide p3, p0, Lcom/baidu/location/c/k$a;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/baidu/location/c/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/location/c/k$a;-><init>(DD)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/k$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/k$a;->b:D

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/location/c/k$a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/k$a;->b:D

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/k$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/k$a;->a:D

    return-wide v0
.end method

.method static synthetic b(Lcom/baidu/location/c/k$a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/k$a;->a:D

    return-wide p1
.end method
