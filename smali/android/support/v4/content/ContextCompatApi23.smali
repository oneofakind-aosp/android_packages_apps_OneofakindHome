.class Landroid/support/v4/content/ContextCompatApi23;
.super Ljava/lang/Object;
.source "ContextCompatApi23.java"


# direct methods
.method public static getColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method
