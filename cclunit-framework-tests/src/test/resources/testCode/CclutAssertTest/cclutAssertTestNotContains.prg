drop program cclutAssertTestNotContains go
create program cclutAssertTestNotContains
%i cclsource:cclutassert_impl_nff.inc

/*
 * request (
 *  1 contains[1]
 *      2 string = vc
 *      2 substring = vc
 *  1 notContains[1]
 *      2 string = vc
 *      2 substring = vc
 * )
 */

/*
 * reply (
 *  1 containsResponse = i2
 *  1 notContainResponse = i2
 * )
 */

set reply->containsResponse = cclutAssertNotContains(1, "contains",
    request->contains.substring, request->contains.string)
set reply->notContainsResponse = cclutAssertNotContains(2, "notContains",
    request->notContains.substring, request->notContains.string)

end
go
