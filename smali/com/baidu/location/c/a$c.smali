.class final Lcom/baidu/location/c/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D


# direct methods
.method private constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/location/c/a$c;->a:D

    iput-wide p3, p0, Lcom/baidu/location/c/a$c;->b:D

    iput-wide p5, p0, Lcom/baidu/location/c/a$c;->c:D

    return-void
.end method

.method synthetic constructor <init>(DDDLcom/baidu/location/c/c;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/baidu/location/c/a$c;-><init>(DDD)V

    return-void
.end method