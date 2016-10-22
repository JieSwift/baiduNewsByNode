/*
 * @Author: HMJ
 * @Date:   2016-10-22 13:29:33
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-22 13:29:48
 */

'use strict';
suite('Global Tests', function() {
    test('page has a valid title', function() {
        assert(document.title && document.title.match(/\S/) &&
            document.title.toUpperCase() !== 'TODO');
    });
});
