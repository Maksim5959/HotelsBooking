<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hotelManager.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/userDropdownMenu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/background.css">
    <title>Hotel manager add new room page</title>
</head>
<body>
<%@include file="/jsp/fragments/header.jsp" %>
<div class="container-lg top-manager-container">
    <div class="row">
        <div class="col-12 col-lg-3">
            <div class="container-fluid manager-menu">
                <div class="container-fluid inner-manager-menu">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a class="link-flash"
                               href="${pageContext.request.contextPath}/frontController?command=get_hotel_manager_update_page">
                                <h1 class="lead menu-text">
                                    <span class="iconify" data-icon="fluent:dual-screen-update-20-filled"></span> Update
                                    hotel data
                                </h1>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a class="link-flash"
                               href="${pageContext.request.contextPath}/frontController?command=get_hotel_manager_all_rooms_page">
                                <h1 class="lead menu-text">
                                    <span class="iconify" data-icon="fluent:conference-room-28-regular"></span> All
                                    rooms
                                </h1>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a class="link-flash"
                               href="${pageContext.request.contextPath}/frontController?command=get_hotel_manager_add_new_room_page">
                                <h1 class="lead menu-text">
                                    <span class="iconify" data-icon="carbon:add-alt"></span> Add new room
                                </h1>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a class="link-flash"
                               href="${pageContext.request.contextPath}/frontController?command=get_hotel_manager_bookings_page">
                                <h1 class="lead menu-text">
                                    <span class="iconify" data-icon="simple-line-icons:calender"></span> Bookings
                                </h1>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-8">
            <div class="container-fluid manage-result-con">
                <form action="${pageContext.request.contextPath}/frontController" method="post">
                    <input type="hidden" name="command" value="add_room">
                    <input type="hidden" name="hotelId" value="${requestScope.hotel.id}">
                    <div class="container-fluid inner-manage-result-con">
                        <div class="row">
                            <div class="col-4">
                                <div class="form-floating">
                                    <input name="roomName" type="text" class="form-control" id="roomName"
                                           placeholder="Room name*" required>
                                    <label for="roomName">Room name*</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-floating">
                                    <input name="price" type="text" class="form-control" id="price"
                                           placeholder="Price*" required>
                                    <label for="price">Price*</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-floating">
                                    <select id="category" name="category"
                                            class="form-select form-select-lg mb-3"
                                            aria-label="Default select example" required>
                                        <option value="0">Single bed room</option>
                                        <option value="1">Double bed room</option>
                                        <option value="2">Triple bed room</option>
                                        <option value="3">Lux apartment</option>
                                        <option value="4">President lux apartment</option>
                                    </select>
                                    <label for="category">Category</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-floating">
                                    <select id="singleBedCount" name="singleBedCount"
                                            class="form-select form-select-lg mb-3"
                                            aria-label="Default select example" required>
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <label for="singleBedCount">Single bed count</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-floating">
                                    <select id="doubleBedCount" name="doubleBedCount"
                                            class="form-select form-select-lg mb-3"
                                            aria-label="Default select example" required>
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <label for="doubleBedCount">Double bed count</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="tv" class="form-check-input" type="checkbox" id="tv" value="true">
                                    <label class="form-check-label" for="tv">tv</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="conditioner" class="form-check-input" type="checkbox" id="conditioner" value="true">
                                    <label class="form-check-label" for="conditioner">conditioner</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="bar" class="form-check-input" type="checkbox" id="bar" value="true">
                                    <label class="form-check-label" for="bar">bar</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="refrigerator" class="form-check-input" type="checkbox" id="refrigerator" value="true">
                                    <label class="form-check-label" for="refrigerator">refrigerator</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="balcony" class="form-check-input" type="checkbox" id="balcony" value="true">
                                    <label class="form-check-label" for="balcony">balcony</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="jacuzzi" class="form-check-input" type="checkbox" id="jacuzzi" value="true">
                                    <label class="form-check-label" for="jacuzzi">jacuzzi</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="breakfast" class="form-check-input" type="checkbox" id="breakfast" value="true">
                                    <label class="form-check-label" for="breakfast">breakfast</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="wifi" class="form-check-input" type="checkbox" id="wifi" value="true">
                                    <label class="form-check-label" for="wifi">wi-fi</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="transfer" class="form-check-input" type="checkbox" id="transfer" value="true">
                                    <label class="form-check-label" for="transfer">transfer</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="parking" class="form-check-input" type="checkbox" id="parking" value="true">
                                    <label class="form-check-label" for="parking">parking</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="swimmingPool" class="form-check-input" type="checkbox" id="swimmingPool" value="true">
                                    <label class="form-check-label" for="swimmingPool">swimming pool</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="gym" class="form-check-input" type="checkbox" id="gym" value="true">
                                    <label class="form-check-label" for="gym">gym</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="restaurant" class="form-check-input" type="checkbox" id="restaurant" value="true">
                                    <label class="form-check-label" for="restaurant">restaurant</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="pets" class="form-check-input" type="checkbox" id="pets" value="true">
                                    <label class="form-check-label" for="pets">pets</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check form-check-inline">
                                    <input name="accessibilityFeatures" class="form-check-input" type="checkbox" id="accessibilityFeatures" value="true">
                                    <label class="form-check-label" for="accessibilityFeatures">accessibility
                                        features</label>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary form-floating">Add new room</button>
                        <c:if test="${requestScope.addRoomError}">
                            <div class="alert alert-danger alert-hotel-manager" role="alert">
                                <span class="iconify" data-icon="akar-icons:triangle-alert"></span>  Add room error!
                            </div>
                        </c:if>
                        <c:if test="${requestScope.addSuccess}">
                            <div class="alert alert-success alert-password-update" role="alert">
                                <span class="iconify" data-icon="clarity:success-standard-line"></span>  Room added!
                            </div>
                        </c:if>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="/jsp/fragments/background.jsp" %>
<script src="https://code.iconify.design/2/2.1.2/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/userPage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>
